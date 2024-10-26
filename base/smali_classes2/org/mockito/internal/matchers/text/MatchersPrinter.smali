.class public Lorg/mockito/internal/matchers/text/MatchersPrinter;
.super Ljava/lang/Object;
.source "MatchersPrinter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/mockito/internal/matchers/text/FormattedText;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/ArgumentMatcher;

    .line 32
    instance-of v3, v2, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Lorg/mockito/internal/reporting/PrintSettings;->extraTypeInfoFor(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    new-instance v3, Lorg/mockito/internal/matchers/text/FormattedText;

    check-cast v2, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    invoke-interface {v2}, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;->toStringWithType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/mockito/internal/matchers/text/FormattedText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_0
    new-instance v3, Lorg/mockito/internal/matchers/text/FormattedText;

    invoke-static {v2}, Lorg/mockito/internal/matchers/text/MatcherToString;->toString(Lorg/mockito/ArgumentMatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/mockito/internal/matchers/text/FormattedText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getArgumentsBlock(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "(\n    "

    const-string v0, ",\n    "

    const-string v1, "\n);"

    .line 25
    invoke-static {p2, v0, v1, p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->printValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArgumentsLine(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "("

    const-string v0, ", "

    const-string v1, ");"

    .line 20
    invoke-static {p2, v0, v1, p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->printValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
