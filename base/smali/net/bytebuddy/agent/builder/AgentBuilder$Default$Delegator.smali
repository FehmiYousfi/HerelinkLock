.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable<",
        "TT;>;>",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase<",
        "TT;>;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;)V
    .locals 0

    .line 8992
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 9118
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 9108
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9113
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 9103
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 9093
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9098
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disableBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9073
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9088
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9083
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableBootstrapInjection(Ljava/lang/instrument/Instrumentation;Ljava/io/File;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9063
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableBootstrapInjection(Ljava/lang/instrument/Instrumentation;Ljava/io/File;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9078
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enableUnsafeBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9068
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableUnsafeBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1

    .line 9163
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 9146
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 9151
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 9158
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 9173
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object p1

    return-object p1
.end method

.method public installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 9178
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public makeRaw()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 9168
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->makeRaw()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;
.end method

.method public type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1

    .line 9141
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 9123
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 9128
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 9135
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;
    .locals 1

    .line 9038
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9003
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9013
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9048
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9058
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9033
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9053
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9043
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9008
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9028
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9023
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 9018
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method
