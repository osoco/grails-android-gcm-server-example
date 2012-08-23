package es.osoco.android.gcm

class Device {

	String token, projectId
	
    static constraints = {
		token(nullable:false, blank:false, unique:true)
		projectId(nullable:true)
    }
}
