import InitE.FrontendStages.Globals.Output434
import InitE.FrontendStages.Declarations.Data434
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate418
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate434_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) =
        some globalOutput434 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal434 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) := by trivial
theorem globalException434_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) = none := by rfl
#print axioms globalTranslate434_eq
end InitE.FrontendStages.Declarations
