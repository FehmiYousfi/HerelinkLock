.class public final enum Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
.super Ljava/lang/Enum;
.source "MethodCallProxy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PrecomputedMethodGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;


# instance fields
.field private final methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 161
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    .line 156
    sget-object v2, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 174
    new-instance p2, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v0, Ljava/util/concurrent/Callable;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    const-class v2, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;)V

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v10, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v2, "call"

    const/16 v3, 0x401

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 184
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance p2, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v0, Ljava/lang/Runnable;

    invoke-direct {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v4, "run"

    const/16 v5, 0x401

    move-object v2, p2

    invoke-direct/range {v2 .. v12}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 195
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;

    invoke-direct {p2, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;-><init>(Ljava/util/LinkedHashMap;)V

    .line 197
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, p2, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Ljava/util/Map;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
    .locals 1

    .line 156
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;
    .locals 1

    .line 156
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;

    return-object v0
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0

    .line 207
    iget-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p1}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$PrecomputedMethodGraph;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p1

    return-object p1
.end method
