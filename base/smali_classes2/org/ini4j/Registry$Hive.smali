.class public final enum Lorg/ini4j/Registry$Hive;
.super Ljava/lang/Enum;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/Registry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ini4j/Registry$Hive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ini4j/Registry$Hive;

.field public static final enum HKEY_CLASSES_ROOT:Lorg/ini4j/Registry$Hive;

.field public static final enum HKEY_CURRENT_CONFIG:Lorg/ini4j/Registry$Hive;

.field public static final enum HKEY_CURRENT_USER:Lorg/ini4j/Registry$Hive;

.field public static final enum HKEY_LOCAL_MACHINE:Lorg/ini4j/Registry$Hive;

.field public static final enum HKEY_USERS:Lorg/ini4j/Registry$Hive;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lorg/ini4j/Registry$Hive;

    const/4 v1, 0x0

    const-string v2, "HKEY_CLASSES_ROOT"

    invoke-direct {v0, v2, v1}, Lorg/ini4j/Registry$Hive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ini4j/Registry$Hive;->HKEY_CLASSES_ROOT:Lorg/ini4j/Registry$Hive;

    .line 28
    new-instance v0, Lorg/ini4j/Registry$Hive;

    const/4 v2, 0x1

    const-string v3, "HKEY_CURRENT_CONFIG"

    invoke-direct {v0, v3, v2}, Lorg/ini4j/Registry$Hive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ini4j/Registry$Hive;->HKEY_CURRENT_CONFIG:Lorg/ini4j/Registry$Hive;

    .line 29
    new-instance v0, Lorg/ini4j/Registry$Hive;

    const/4 v3, 0x2

    const-string v4, "HKEY_CURRENT_USER"

    invoke-direct {v0, v4, v3}, Lorg/ini4j/Registry$Hive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ini4j/Registry$Hive;->HKEY_CURRENT_USER:Lorg/ini4j/Registry$Hive;

    .line 30
    new-instance v0, Lorg/ini4j/Registry$Hive;

    const/4 v4, 0x3

    const-string v5, "HKEY_LOCAL_MACHINE"

    invoke-direct {v0, v5, v4}, Lorg/ini4j/Registry$Hive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ini4j/Registry$Hive;->HKEY_LOCAL_MACHINE:Lorg/ini4j/Registry$Hive;

    .line 31
    new-instance v0, Lorg/ini4j/Registry$Hive;

    const/4 v5, 0x4

    const-string v6, "HKEY_USERS"

    invoke-direct {v0, v6, v5}, Lorg/ini4j/Registry$Hive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ini4j/Registry$Hive;->HKEY_USERS:Lorg/ini4j/Registry$Hive;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ini4j/Registry$Hive;

    .line 25
    sget-object v6, Lorg/ini4j/Registry$Hive;->HKEY_CLASSES_ROOT:Lorg/ini4j/Registry$Hive;

    aput-object v6, v0, v1

    sget-object v1, Lorg/ini4j/Registry$Hive;->HKEY_CURRENT_CONFIG:Lorg/ini4j/Registry$Hive;

    aput-object v1, v0, v2

    sget-object v1, Lorg/ini4j/Registry$Hive;->HKEY_CURRENT_USER:Lorg/ini4j/Registry$Hive;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ini4j/Registry$Hive;->HKEY_LOCAL_MACHINE:Lorg/ini4j/Registry$Hive;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ini4j/Registry$Hive;->HKEY_USERS:Lorg/ini4j/Registry$Hive;

    aput-object v1, v0, v5

    sput-object v0, Lorg/ini4j/Registry$Hive;->$VALUES:[Lorg/ini4j/Registry$Hive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ini4j/Registry$Hive;
    .locals 1

    .line 25
    const-class v0, Lorg/ini4j/Registry$Hive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ini4j/Registry$Hive;

    return-object p0
.end method

.method public static values()[Lorg/ini4j/Registry$Hive;
    .locals 1

    .line 25
    sget-object v0, Lorg/ini4j/Registry$Hive;->$VALUES:[Lorg/ini4j/Registry$Hive;

    invoke-virtual {v0}, [Lorg/ini4j/Registry$Hive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ini4j/Registry$Hive;

    return-object v0
.end method
