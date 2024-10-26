.class public Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResolvedMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 175
    instance-of p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

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

    .line 175
    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

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

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 175
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 1

    .line 194
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
