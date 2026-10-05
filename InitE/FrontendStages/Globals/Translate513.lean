import InitE.FrontendStages.Globals.Output513
import InitE.FrontendStages.Declarations.Data513
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate497
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate513_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified513) =
        some globalOutput513 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal513 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified513) := by trivial
theorem globalException513_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified513) = none := by rfl
#print axioms globalTranslate513_eq
end InitE.FrontendStages.Declarations
