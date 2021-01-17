package mg.lazanomentsoa.quincailleriesedera

class GlobalConfig {
    public static final def USER_TYPE = [
            ADMINISTRATEUR: "ADMINISTRATEUR",
            MEMBER_NORMAL: "MEMBRE_NORMAL"
    ]

    public static Integer itemParPage(){
        return 8
    }
}
