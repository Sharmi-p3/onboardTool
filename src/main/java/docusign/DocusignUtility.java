package docusign;

import com.docusign.esign.api.EnvelopesApi;
import com.docusign.esign.client.ApiClient;
import com.docusign.esign.client.ApiException;
import com.docusign.esign.client.Configuration;
import com.docusign.esign.client.auth.OAuth;
import com.docusign.esign.model.*;
import com.migcomponents.migbase64.Base64;
import org.junit.*;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.List;

public class DocusignUtility {

    private static final String RedirectURI = "https://appdemo.docusign.com";
    private static final String OAuthBaseUrl = "account-d.docusign.com";
    private static final String BaseUrl = "https://demo.docusign.net/restapi";
    private static final String IntegratorKey = "9a87f67e-1079-44b2-9309-f64ed4a4cc6e";
    private static final String UserId = "82ee6844-85fd-4716-986f-f8a4b6921c22";
    private static final String publicKeyFilename = "D:\\shankar\\officeproject\\onboarding_gradle_project\\src\\main\\webapp\\docs\\publickey.txt";
    private static final String privateKeyFilename = "D:\\shankar\\officeproject\\onboarding_gradle_project\\src\\main\\webapp\\docs\\privatekey.txt";

    public void requestDocumentSigning(ByteArrayOutputStream fileOutputStream, Map.Entry<String, String> users) {
        System.out.println("\nRequestASignatureTest:\n" + "===========================================");
        byte[] fileBytes = null;

        fileBytes = fileOutputStream.toByteArray();

        // create an envelope to be signed

        EnvelopeDefinition envelopeDefinition = new EnvelopeDefinition();
        envelopeDefinition.setEmailSubject("Please Sign the Document");
        envelopeDefinition.setEmailBlurb("Please Sign the document");

        // add a document to the envelope

        Document document = new Document();
        String base64Doc = Base64.encodeToString(fileBytes, false);
        document.setDocumentBase64(base64Doc);
        document.setName("IntakeReview.pdf");
        document.setDocumentId("1");


        List<Document> documentList = new ArrayList<Document>();
        documentList.add(document);

        envelopeDefinition.setDocuments(documentList);

        // Add a recipient to sign the document

        List<Signer> signerListTabs = new ArrayList();
        Signer signer = new Signer();
        signer.setEmail(users.getKey());
        signer.setName(users.getValue());
        signer.setRecipientId(UUID.randomUUID().toString());

        // Create a SignHere tab somewhere on the document for the signer to sign

        SignHere signHere = new SignHere();
        signHere.setDocumentId("1");
        signHere.setPageNumber("7");
        signHere.setRecipientId("1");
        /*signHere.setXPosition("500");
        signHere.setYPosition("50");
        signHere.setScaleValue("2");*/

        signHere.setXPosition("450");
        signHere.setYPosition("700");
        signHere.anchorXOffset("500");
        signHere.anchorYOffset("1000");

        List<SignHere> signHereTabs = new ArrayList<SignHere>();
        signHereTabs.add(signHere);
        Tabs tabs = new Tabs();
        tabs.setSignHereTabs(signHereTabs);

        signer.setTabs(tabs);
        signerListTabs.add(signer);


        // Above causes issue

        envelopeDefinition.setRecipients(new Recipients());
        envelopeDefinition.getRecipients().setSigners(new ArrayList<Signer>());
        signerListTabs.forEach(s -> envelopeDefinition.getRecipients().getSigners().add(s));


        // send the envelope (otherwise it will be "created" in the Draft folder
        envelopeDefinition.setStatus("sent");

        ApiClient apiClient = new ApiClient(BaseUrl);

        try {
            // IMPORTANT NOTE:
            // the first time you ask for a JWT access token, you should grant access by making the following call
            // get DocuSign OAuth authorization url:
            //String oauthLoginUrl = apiClient.getJWTUri(IntegratorKey, RedirectURI, OAuthBaseUrl);
            // open DocuSign OAuth authorization url in the browser, login and grant access
            //Desktop.getDesktop().browse(URI.create(oauthLoginUrl));
            // END OF NOTE

            apiClient.configureJWTAuthorizationFlow(publicKeyFilename, privateKeyFilename, OAuthBaseUrl, IntegratorKey, UserId, 3600);

            // now that the API client has an OAuth token, let's use it in all
            // DocuSign APIs

            OAuth.UserInfo userInfo = apiClient.getUserInfo(apiClient.getAccessToken());
            Assert.assertNotSame(null, userInfo);
            Assert.assertNotNull(userInfo.getAccounts());
            Assert.assertTrue(userInfo.getAccounts().size() > 0);

            System.out.println("UserInfo: " + userInfo);
            // parse first account's baseUrl
            // below code required for production, no effect in demo (same
            // domain)

            apiClient.setBasePath(userInfo.getAccounts().get(0).getBaseUri() + "/restapi");
            Configuration.setDefaultApiClient(apiClient);
            String accountId = userInfo.getAccounts().get(0).getAccountId();

            EnvelopesApi envelopesApi = new EnvelopesApi();

            EnvelopeSummary envelopeSummary = envelopesApi.createEnvelope(accountId, envelopeDefinition);

            Assert.assertNotNull(envelopeSummary);
            Assert.assertNotNull(envelopeSummary.getEnvelopeId());
            Assert.assertEquals("sent", envelopeSummary.getStatus());

            System.out.println("EnvelopeSummary: " + envelopeSummary);

        } catch (ApiException ex) {
            ex.printStackTrace();

        } catch (Exception e) {

            e.printStackTrace();

        }
    }


}


