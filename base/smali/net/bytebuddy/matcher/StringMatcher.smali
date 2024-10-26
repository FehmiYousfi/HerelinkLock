.class public Lnet/bytebuddy/matcher/StringMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/StringMatcher$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p1, p1, Lnet/bytebuddy/matcher/StringMatcher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/matcher/StringMatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/matcher/StringMatcher;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/matcher/StringMatcher;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    iget-object p1, p1, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/StringMatcher;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/matcher/StringMatcher$Mode;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v1}, Lnet/bytebuddy/matcher/StringMatcher$Mode;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
