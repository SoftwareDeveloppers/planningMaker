package Fonction;

public class ActModel {

	private int id;
	private String mcadr;
	
	public ActModel(int id,String mcadr) {
		super();
		this.id = id;
		this.mcadr = mcadr;
	}
	
	public ActModel() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMcadr() {
		return mcadr;
	}

	public void setMcadr(String mcadr) {
		this.mcadr = mcadr;
	}
	
}
