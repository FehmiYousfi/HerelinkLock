.class public Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFieldToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final token:Lnet/bytebuddy/description/field/FieldDescription$Token;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/field/FieldDescription$Token;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 98
    instance-of p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;-><init>(Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;)V

    return-object v0
.end method
