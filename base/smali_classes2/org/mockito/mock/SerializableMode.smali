.class public final enum Lorg/mockito/mock/SerializableMode;
.super Ljava/lang/Enum;
.source "SerializableMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/mock/SerializableMode;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/mock/SerializableMode;

.field public static final enum ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum BASIC:Lorg/mockito/mock/SerializableMode;

.field public static final enum NONE:Lorg/mockito/mock/SerializableMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/mockito/mock/SerializableMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    .line 23
    new-instance v0, Lorg/mockito/mock/SerializableMode;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/mock/SerializableMode;->BASIC:Lorg/mockito/mock/SerializableMode;

    .line 28
    new-instance v0, Lorg/mockito/mock/SerializableMode;

    const/4 v3, 0x2

    const-string v4, "ACROSS_CLASSLOADERS"

    invoke-direct {v0, v4, v3}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mockito/mock/SerializableMode;

    .line 12
    sget-object v4, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/mockito/mock/SerializableMode;->BASIC:Lorg/mockito/mock/SerializableMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mockito/mock/SerializableMode;->$VALUES:[Lorg/mockito/mock/SerializableMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/mock/SerializableMode;
    .locals 1

    .line 12
    const-class v0, Lorg/mockito/mock/SerializableMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/mock/SerializableMode;

    return-object p0
.end method

.method public static values()[Lorg/mockito/mock/SerializableMode;
    .locals 1

    .line 12
    sget-object v0, Lorg/mockito/mock/SerializableMode;->$VALUES:[Lorg/mockito/mock/SerializableMode;

    invoke-virtual {v0}, [Lorg/mockito/mock/SerializableMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/mock/SerializableMode;

    return-object v0
.end method
