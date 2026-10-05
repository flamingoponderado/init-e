import InitE.FrontendStages.Globals.Output580
import InitE.FrontendStages.Declarations.Data580
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate560
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate580_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified580) =
        some globalOutput580 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal580 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified580) := by trivial
theorem globalException580_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified580) = none := by rfl
#print axioms globalTranslate580_eq
end InitE.FrontendStages.Declarations
