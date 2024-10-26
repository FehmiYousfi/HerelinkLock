.class public abstract enum Lnet/bytebuddy/TypeCache$Sort;
.super Ljava/lang/Enum;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/TypeCache$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/TypeCache$Sort;

.field public static final enum SOFT:Lnet/bytebuddy/TypeCache$Sort;

.field public static final enum WEAK:Lnet/bytebuddy/TypeCache$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 191
    new-instance v0, Lnet/bytebuddy/TypeCache$Sort$1;

    const/4 v1, 0x0

    const-string v2, "WEAK"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/TypeCache$Sort$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/TypeCache$Sort;->WEAK:Lnet/bytebuddy/TypeCache$Sort;

    .line 201
    new-instance v0, Lnet/bytebuddy/TypeCache$Sort$2;

    const/4 v2, 0x1

    const-string v3, "SOFT"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/TypeCache$Sort$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/TypeCache$Sort;->SOFT:Lnet/bytebuddy/TypeCache$Sort;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/TypeCache$Sort;

    .line 186
    sget-object v3, Lnet/bytebuddy/TypeCache$Sort;->WEAK:Lnet/bytebuddy/TypeCache$Sort;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/TypeCache$Sort;->SOFT:Lnet/bytebuddy/TypeCache$Sort;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/TypeCache$Sort;->$VALUES:[Lnet/bytebuddy/TypeCache$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/TypeCache$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/TypeCache$Sort;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/TypeCache$Sort;
    .locals 1

    .line 186
    const-class v0, Lnet/bytebuddy/TypeCache$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/TypeCache$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/TypeCache$Sort;
    .locals 1

    .line 186
    sget-object v0, Lnet/bytebuddy/TypeCache$Sort;->$VALUES:[Lnet/bytebuddy/TypeCache$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/TypeCache$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/TypeCache$Sort;

    return-object v0
.end method


# virtual methods
.method protected abstract wrap(Ljava/lang/Class;)Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method
