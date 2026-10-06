import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.StructKernelComputation
import InitE.FrontendStages.Declarations.Data438
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct422
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct438_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified438 = some simplified438 := by
  apply InitE.StructKernelComputation.declaration_identity
  change InitE.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData438) = true
  rw [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct438_eq
end InitE.FrontendStages.Declarations
