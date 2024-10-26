.class public final enum Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;
.super Ljava/lang/Enum;
.source "NamingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForUnnamedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;",
        ">;",
        "Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

.field public static final enum INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 205
    new-instance v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    .line 200
    sget-object v2, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->$VALUES:[Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;
    .locals 1

    .line 200
    const-class v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;
    .locals 1

    .line 200
    sget-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->$VALUES:[Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-virtual {v0}, [Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
