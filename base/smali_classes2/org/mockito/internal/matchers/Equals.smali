.class public Lorg/mockito/internal/matchers/Equals;
.super Ljava/lang/Object;
.source "Equals.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final wanted:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    return-void
.end method

.method private describe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    check-cast p1, Lorg/mockito/internal/matchers/Equals;

    .line 43
    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method protected final getWanted()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mockito/internal/matchers/Equals;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringWithType()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/mockito/internal/matchers/Equals;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeMatches(Ljava/lang/Object;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
