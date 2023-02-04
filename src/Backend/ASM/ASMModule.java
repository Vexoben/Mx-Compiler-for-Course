package Backend.ASM;

import Backend.ASM.Operands.GlobalReg;
import Backend.ASM.Operands.PhysicalReg;

import java.util.ArrayList;
import java.util.HashMap;

public class ASMModule {
    public ArrayList<ASMFunction> functions = new ArrayList<>();
    public ArrayList<GlobalReg> global_vars = new ArrayList<>();
    public ArrayList<GlobalReg> const_strings = new ArrayList<>();

    static HashMap<String, PhysicalReg> phy_name_map = new HashMap<>();
    static HashMap<Integer, PhysicalReg> phy_id_map = new HashMap<>();
    static String[] reg_name = new String[] {
            "zero", "ra", "sp", "gp", "tp",
            "t0", "t1", "t2", "s0", "s1",
            "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7",
            "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11",
            "t3", "t4", "t5", "t6"
    };
    public static ArrayList<PhysicalReg> callee_saved_reg = new ArrayList<>();
    public static ArrayList<PhysicalReg> caller_saved_reg = new ArrayList<>();
    public static ArrayList<PhysicalReg> assignable_colors = new ArrayList<>();

    static {
        for (int i = 0; i < reg_name.length; ++i) {
            PhysicalReg reg = new PhysicalReg(reg_name[i]);
            phy_id_map.put(i, reg);
            phy_name_map.put(reg_name[i], reg);
        }

        for (int i = 0; i <= 6; ++i) caller_saved_reg.add(get_reg_t(i));
        for (int i = 0; i <= 7; ++i) caller_saved_reg.add(get_reg_a(i));
        caller_saved_reg.add(get_reg("ra"));

        for (int i = 0; i < 12; ++i) {
            callee_saved_reg.add(get_reg_s(i));
        }

        assignable_colors.addAll(callee_saved_reg);
        assignable_colors.addAll(caller_saved_reg);
    }

    public ASMModule() {
    }

    public static PhysicalReg get_reg(int id) {
        return phy_name_map.get(reg_name[id]);
    }

    public static PhysicalReg get_reg(String name) {
        return phy_name_map.get(name);
    }

    public static PhysicalReg get_reg_a(int id) {
        return phy_name_map.get("a" + id);
    }

    public static PhysicalReg get_reg_s(int id) {
        return phy_name_map.get("s" + id);
    }

    public static PhysicalReg get_reg_t(int id) {
        return phy_name_map.get("t" + id);
    }

    public static ArrayList<PhysicalReg> get_callee_saved_reg() {
        return callee_saved_reg;
    }

    @Override
    public String toString() {
        return null;
    }
}
