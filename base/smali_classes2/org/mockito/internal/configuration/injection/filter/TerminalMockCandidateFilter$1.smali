.class Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;
.super Ljava/lang/Object;
.source "TerminalMockCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;

.field final synthetic val$candidateFieldToBeInjected:Ljava/lang/reflect/Field;

.field final synthetic val$injectee:Ljava/lang/Object;

.field final synthetic val$matchingMock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->this$0:Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;

    iput-object p2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$injectee:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$candidateFieldToBeInjected:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$matchingMock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public thenInject()Ljava/lang/Object;
    .locals 3

    .line 35
    :try_start_0
    new-instance v0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;

    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$injectee:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$candidateFieldToBeInjected:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$matchingMock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$injectee:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$candidateFieldToBeInjected:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$matchingMock:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$matchingMock:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$candidateFieldToBeInjected:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;->val$matchingMock:Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/mockito/internal/exceptions/Reporter;->cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
