.class public final enum Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;
.super Ljava/lang/Enum;
.source "MethodAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 313
    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    .line 308
    sget-object v2, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->$VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;
    .locals 1

    .line 308
    const-class v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;
    .locals 1

    .line 308
    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->$VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
    .locals 0

    .line 317
    new-instance p2, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;

    invoke-direct {p2, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-object p2
.end method
