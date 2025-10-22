
ifeq ($(SRC), )
SRC=../src
endif

ifeq ($(BUILD), )
BUILD=.
endif

all: exe

include Makefile.inc

$(BUILD)/abor1.intfb.ok: $(BUILD)/abor1.intfb.h 
	touch $(BUILD)/abor1.intfb.ok

$(BUILD)/acdrag.intfb.ok: $(BUILD)/acdrag.intfb.h $(BUILD)/model_physics_mf_mod.o $(BUILD)/parkind1.o $(BUILD)/yomcst.o
	touch $(BUILD)/acdrag.intfb.ok

$(BUILD)/fcttrm.func.ok: $(SRC)/fcttrm.func.h 
	touch $(BUILD)/fcttrm.func.ok

$(BUILD)/abor1.o: $(BOOT) $(SRC)/abor1.F90 
	$(FC) -o $(BUILD)/abor1.o -c $(SRC)/abor1.F90

$(BUILD)/acdrag.o: $(BOOT) $(SRC)/acdrag.F90 $(BUILD)/model_physics_mf_mod.o $(BUILD)/parkind1.o $(BUILD)/yomcst.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/acdrag.o -c $(SRC)/acdrag.F90

$(BUILD)/main_acdrag.o: $(BOOT) $(SRC)/main_acdrag.F90 $(BUILD)/model_physics_mf_mod.o $(BUILD)/parkind1.o $(BUILD)/util_model_physics_mf_type_mod.o $(BUILD)/util_tcst_mod.o $(BUILD)/xrd_getoptions.o $(BUILD)/xrd_unix_env.o $(BUILD)/yomcst.o $(BUILD)/yomdata.o $(BUILD)/yomhook.o acdrag.intfb.ok
	$(FC) -o $(BUILD)/main_acdrag.o -c $(SRC)/main_acdrag.F90

$(BUILD)/model_physics_mf_mod.o: $(BOOT) $(SRC)/model_physics_mf_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomphy.o $(BUILD)/yomphy0.o $(BUILD)/yomphy2.o
	$(FC) -o $(BUILD)/model_physics_mf_mod.o -c $(SRC)/model_physics_mf_mod.F90

$(BUILD)/parkind1.o: $(BOOT) $(SRC)/parkind1.F90 
	$(FC) -o $(BUILD)/parkind1.o -c $(SRC)/parkind1.F90

$(BUILD)/util_model_physics_mf_type_mod.o: $(BOOT) $(SRC)/util_model_physics_mf_type_mod.F90 $(BUILD)/model_physics_mf_mod.o $(BUILD)/util_tphy0_mod.o $(BUILD)/util_tphy2_mod.o $(BUILD)/util_tphy_mod.o
	$(FC) -o $(BUILD)/util_model_physics_mf_type_mod.o -c $(SRC)/util_model_physics_mf_type_mod.F90

$(BUILD)/util_tadvprs_mod.o: $(BOOT) $(SRC)/util_tadvprs_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomphy0.o
	$(FC) -o $(BUILD)/util_tadvprs_mod.o -c $(SRC)/util_tadvprs_mod.F90

$(BUILD)/util_tcst_mod.o: $(BOOT) $(SRC)/util_tcst_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomcst.o
	$(FC) -o $(BUILD)/util_tcst_mod.o -c $(SRC)/util_tcst_mod.F90

$(BUILD)/util_tphy0_mod.o: $(BOOT) $(SRC)/util_tphy0_mod.F90 $(BUILD)/parkind1.o $(BUILD)/util_tadvprs_mod.o $(BUILD)/yomphy0.o
	$(FC) -o $(BUILD)/util_tphy0_mod.o -c $(SRC)/util_tphy0_mod.F90

$(BUILD)/util_tphy2_mod.o: $(BOOT) $(SRC)/util_tphy2_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomphy2.o
	$(FC) -o $(BUILD)/util_tphy2_mod.o -c $(SRC)/util_tphy2_mod.F90

$(BUILD)/util_tphy_mod.o: $(BOOT) $(SRC)/util_tphy_mod.F90 $(BUILD)/yomphy.o
	$(FC) -o $(BUILD)/util_tphy_mod.o -c $(SRC)/util_tphy_mod.F90

$(BUILD)/xrd_getoptions.o: $(BOOT) $(SRC)/xrd_getoptions.F90 $(BUILD)/parkind1.o $(BUILD)/xrd_unix_env.o
	$(FC) -o $(BUILD)/xrd_getoptions.o -c $(SRC)/xrd_getoptions.F90

$(BUILD)/xrd_unix_env.o: $(BOOT) $(SRC)/xrd_unix_env.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/xrd_unix_env.o -c $(SRC)/xrd_unix_env.F90

$(BUILD)/yomcst.o: $(BOOT) $(SRC)/yomcst.F90 $(BUILD)/parkind1.o $(BUILD)/yomdyncore.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o fcttrm.func.ok
	$(FC) -o $(BUILD)/yomcst.o -c $(SRC)/yomcst.F90

$(BUILD)/yomdata.o: $(BOOT) $(SRC)/yomdata.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdata.o -c $(SRC)/yomdata.F90

$(BUILD)/yomdyncore.o: $(BOOT) $(SRC)/yomdyncore.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdyncore.o -c $(SRC)/yomdyncore.F90

$(BUILD)/yomhook.o: $(BOOT) $(SRC)/yomhook.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomhook.o -c $(SRC)/yomhook.F90

$(BUILD)/yomlun.o: $(BOOT) $(SRC)/yomlun.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomlun.o -c $(SRC)/yomlun.F90

$(BUILD)/yomphy.o: $(BOOT) $(SRC)/yomphy.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy.o -c $(SRC)/yomphy.F90

$(BUILD)/yomphy0.o: $(BOOT) $(SRC)/yomphy0.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy0.o -c $(SRC)/yomphy0.F90

$(BUILD)/yomphy2.o: $(BOOT) $(SRC)/yomphy2.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy2.o -c $(SRC)/yomphy2.F90

$(BUILD)/get_time.o: $(BOOT) $(SRC)/get_time.c
	$(CC) -o $(BUILD)/get_time.o -c $(SRC)/get_time.c
$(BUILD)/main_acdrag.x: $(BOOT) $(BUILD)/main_acdrag.o $(BUILD)/abor1.o $(BUILD)/acdrag.o $(BUILD)/model_physics_mf_mod.o $(BUILD)/parkind1.o $(BUILD)/util_model_physics_mf_type_mod.o $(BUILD)/util_tadvprs_mod.o $(BUILD)/util_tcst_mod.o $(BUILD)/util_tphy0_mod.o $(BUILD)/util_tphy2_mod.o $(BUILD)/util_tphy_mod.o $(BUILD)/xrd_getoptions.o $(BUILD)/xrd_unix_env.o $(BUILD)/yomcst.o $(BUILD)/yomdata.o $(BUILD)/yomdyncore.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o $(BUILD)/yomphy.o $(BUILD)/yomphy0.o $(BUILD)/yomphy2.o $(BUILD)/get_time.o
	$(FC) -o $(BUILD)/main_acdrag.x $(BUILD)/main_acdrag.o $(BUILD)/abor1.o $(BUILD)/acdrag.o $(BUILD)/model_physics_mf_mod.o $(BUILD)/parkind1.o $(BUILD)/util_model_physics_mf_type_mod.o $(BUILD)/util_tadvprs_mod.o $(BUILD)/util_tcst_mod.o $(BUILD)/util_tphy0_mod.o $(BUILD)/util_tphy2_mod.o $(BUILD)/util_tphy_mod.o $(BUILD)/xrd_getoptions.o $(BUILD)/xrd_unix_env.o $(BUILD)/yomcst.o $(BUILD)/yomdata.o $(BUILD)/yomdyncore.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o $(BUILD)/yomphy.o $(BUILD)/yomphy0.o $(BUILD)/yomphy2.o $(BUILD)/get_time.o $(LIBS)


exe: $(BUILD)/main_acdrag.x

subclean:
	\rm -f $(BUILD)/abor1.o $(BUILD)/acdrag.o $(BUILD)/main_acdrag.o $(BUILD)/get_time.o

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
