import InitE.CrepKernelComputation
import InitE.FrontendCodecComputation
import InitE.FrontendStages.Globals.Output237
import InitE.FrontendStages.Crep.Data219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate219_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.Declarations.globalOutput237 = some output219 := by
  rw [InitE.CrepKernelComputation.compileDeclaration_eq]
  dsimp only [InitE.FrontendStages.Declarations.globalOutput237, output219]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq,
    InitE.CrepKernelComputation.crepProgToHOL_function_eq]
  dsimp only [functionMap, functionSkeleton, exceptionMap, exceptionSkeleton]
  rw [InitE.FrontendCodecComputation.shapeToHOL_function_eq]
  kernel_rfl
#print axioms translate219_eq
end InitE.FrontendStages.Crep
