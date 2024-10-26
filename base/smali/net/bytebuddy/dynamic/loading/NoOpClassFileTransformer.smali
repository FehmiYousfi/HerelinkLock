.class public final enum Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;
.super Ljava/lang/Enum;
.source "NoOpClassFileTransformer.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;",
        ">;",
        "Ljava/lang/instrument/ClassFileTransformer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

.field private static final NO_TRANSFORMATION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    .line 11
    sget-object v2, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->$VALUES:[Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->NO_TRANSFORMATION:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;
    .locals 1

    .line 11
    const-class v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;
    .locals 1

    .line 11
    sget-object v0, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->$VALUES:[Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 30
    sget-object p1, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->NO_TRANSFORMATION:[B

    return-object p1
.end method
