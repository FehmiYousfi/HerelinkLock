.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.super Ljava/lang/Object;
.source "InstrumentedType.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Frozen;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;,
        Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    }
.end annotation


# virtual methods
.method public abstract getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end method

.method public abstract getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end method

.method public abstract validated()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;"
        }
    .end annotation
.end method

.method public abstract withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method
