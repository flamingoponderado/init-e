import InitE.FrontendStages.Globals.Output314
import InitE.FrontendStages.Declarations.Data314
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate297
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate314_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified314) =
        some globalOutput314 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal314 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified314) := by trivial
theorem globalException314_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified314) = none := by rfl
#print axioms globalTranslate314_eq
end InitE.FrontendStages.Declarations
