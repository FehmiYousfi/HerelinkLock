.class public Lnet/bytebuddy/matcher/MethodSortMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "MethodSortMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 26
    iput-object p1, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p1, p1, Lnet/bytebuddy/matcher/MethodSortMatcher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/matcher/MethodSortMatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/matcher/MethodSortMatcher;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    iget-object p1, p1, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

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

    .line 12
    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

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

    .line 12
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/MethodSortMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->isSort(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
