import InitE.FrontendStages.Globals.Output507
import InitE.FrontendStages.Declarations.Data507
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate491
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate507_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified507) =
        some globalOutput507 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal507 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified507) := by trivial
theorem globalException507_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified507) = none := by rfl
#print axioms globalTranslate507_eq
end InitE.FrontendStages.Declarations
