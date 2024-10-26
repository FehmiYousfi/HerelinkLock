.class Lorg/mockito/internal/invocation/InvocationMatcher$1;
.super Ljava/lang/Object;
.source "InvocationMatcher.java"

# interfaces
.implements Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/invocation/InvocationMatcher;->captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/invocation/InvocationMatcher;


# direct methods
.method constructor <init>(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationMatcher$1;->this$0:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 140
    instance-of v0, p1, Lorg/mockito/internal/matchers/CapturesArguments;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lorg/mockito/internal/matchers/CapturesArguments;

    invoke-interface {p1, p2}, Lorg/mockito/internal/matchers/CapturesArguments;->captureFrom(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
