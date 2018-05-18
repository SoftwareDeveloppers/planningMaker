package dao;

import java.lang.reflect.Array;
import java.util.ArrayList;

import model.Affectation;
import model.affectationJoin;

public interface AffectationDao {
	public boolean create(Affectation e);
	public ArrayList<affectationJoin> jointureAffectaction();

}
