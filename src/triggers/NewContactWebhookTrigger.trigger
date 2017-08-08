trigger NewContactWebhookTrigger on Contact (after insert) {
	String url = 'https://slim-rest.herokuapp.com/input-rest';
	String content = Webhook.jsonContent(Trigger.new, Trigger.old);
	Webhook.callout(url, content);

}