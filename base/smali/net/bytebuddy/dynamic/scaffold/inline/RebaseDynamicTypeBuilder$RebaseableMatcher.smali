.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;
.super Ljava/lang/Object;
.source "RebaseDynamicTypeBuilder.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RebaseableMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final tokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodList;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 206
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 206
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

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

    .line 206
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

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

    .line 206
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription$Token;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/method/MethodDescription$Token;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
