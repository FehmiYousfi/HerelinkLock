.class Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;
.super Ljava/lang/Object;
.source "XECDHECryptography.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Initialize"
.end annotation


# static fields
.field private static final PREFERRED:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field private static final PREFERRED_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final USABLE_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 694
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X25519:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X448:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->PREFERRED:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 703
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isUsable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 704
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 707
    :cond_1
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->PREFERRED:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 708
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isUsable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 709
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 712
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 713
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->USABLE_GROUPS:Ljava/util/List;

    .line 716
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->PREFERRED_GROUPS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 686
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->USABLE_GROUPS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .line 686
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->PREFERRED_GROUPS:Ljava/util/List;

    return-object v0
.end method
