import InitE.FrontendStages.Globals.Output752
import InitE.FrontendStages.Declarations.Data752
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate736
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate752_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified752) =
        some globalOutput752 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal752 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified752) := by trivial
theorem globalException752_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified752) = none := by rfl
#print axioms globalTranslate752_eq
end InitE.FrontendStages.Declarations
