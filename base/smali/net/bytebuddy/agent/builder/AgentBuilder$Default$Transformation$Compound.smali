.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;)V"
        }
    .end annotation

    .line 8216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    .line 8218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    .line 8219
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    if-eqz v1, :cond_1

    .line 8220
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    iget-object v0, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8221
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Ignored;

    if-nez v1, :cond_0

    .line 8222
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V
    .locals 0

    .line 8208
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8194
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8194
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

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

    .line 8194
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

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

.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    .line 8233
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 8234
    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;"
        }
    .end annotation

    .line 8249
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    :goto_0
    invoke-direct {v0, v10, v11, v12, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    move-object v13, p0

    .line 8250
    iget-object v2, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;->transformations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 8251
    invoke-interface/range {v2 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object v2

    .line 8258
    sget-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$1;->$SwitchMap$net$bytebuddy$agent$builder$AgentBuilder$Default$Transformation$Resolution$Sort:[I

    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 8267
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resolution type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8262
    :cond_2
    invoke-interface {v0, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object v0

    goto :goto_1

    .line 8260
    :cond_3
    invoke-interface {v0, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object v0

    :cond_4
    return-object v0
.end method
