.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final transformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;)V"
        }
    .end annotation

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    .line 2158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 2159
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    if-eqz v1, :cond_1

    .line 2160
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    iget-object v0, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2161
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$NoOp;

    if-nez v1, :cond_0

    .line 2162
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)V
    .locals 0

    .line 2148
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 2134
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2134
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

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

    .line 2134
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

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

.method public transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;->transformers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 2173
    invoke-interface {v1, p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;->transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
