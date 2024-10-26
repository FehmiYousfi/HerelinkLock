.class public Lnet/bytebuddy/matcher/BooleanMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "BooleanMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matches:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 24
    iput-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    iget-boolean p1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 10
    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 29
    iget-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
