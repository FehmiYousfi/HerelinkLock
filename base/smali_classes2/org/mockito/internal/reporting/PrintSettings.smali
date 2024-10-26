.class public Lorg/mockito/internal/reporting/PrintSettings;
.super Ljava/lang/Object;
.source "PrintSettings.java"


# static fields
.field public static final MAX_LINE_LENGTH:I = 0x2d


# instance fields
.field private multiline:Z

.field private withTypeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    return-void
.end method

.method public static varargs verboseMatchers([Ljava/lang/Integer;)Lorg/mockito/internal/reporting/PrintSettings;
    .locals 1

    .line 34
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Lorg/mockito/internal/reporting/PrintSettings;->setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public extraTypeInfoFor(I)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMultiline()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->multiline:Z

    return v0
.end method

.method public print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/invocation/Invocation;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/mockito/internal/matchers/text/MatchersPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;-><init>()V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->getArgumentsLine(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/PrintSettings;->isMultiline()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 52
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->getArgumentsBlock(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/mockito/invocation/Invocation;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/mockito/invocation/MatchableInvocation;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    return-void
.end method

.method public setMultiline(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lorg/mockito/internal/reporting/PrintSettings;->multiline:Z

    return-void
.end method
