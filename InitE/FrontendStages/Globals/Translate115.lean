import InitE.FrontendStages.Globals.Output115
import InitE.FrontendStages.Declarations.Data115
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate96
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate115_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) =
        some globalOutput115 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal115 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) := by trivial
theorem globalException115_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) = none := by rfl
#print axioms globalTranslate115_eq
end InitE.FrontendStages.Declarations
