.class public Lorg/mockito/internal/matchers/EqualsWithDelta;
.super Ljava/lang/Object;
.source "EqualsWithDelta.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Number;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final delta:Ljava/lang/Number;

.field private final wanted:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->wanted:Ljava/lang/Number;

    .line 19
    iput-object p2, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->delta:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Number;)Z
    .locals 9

    .line 23
    iget-object v0, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->wanted:Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    return v2

    .line 27
    :cond_2
    iget-object v0, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->wanted:Ljava/lang/Number;

    if-ne v0, p1, :cond_3

    return v1

    .line 31
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->delta:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-object p1, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->wanted:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    iget-object p1, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->delta:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/matchers/EqualsWithDelta;->matches(Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->wanted:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/matchers/EqualsWithDelta;->delta:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
