.class public final enum Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
.super Ljava/lang/Enum;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool$CacheProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 181
    new-instance v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    .line 176
    sget-object v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->$VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
    .locals 1

    .line 176
    const-class v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
    .locals 1

    .line 176
    sget-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->$VALUES:[Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 0

    .line 185
    sget-object p1, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->UNRESOLVED:Lnet/bytebuddy/pool/TypePool$Resolution;

    return-object p1
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 0

    return-object p2
.end method
