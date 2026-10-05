import InitE.FrontendStages.Globals.Output742
import InitE.FrontendStages.Declarations.Data742
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate721
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate742_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified742) =
        some globalOutput742 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal742 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified742) := by trivial
theorem globalException742_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified742) = none := by rfl
#print axioms globalTranslate742_eq
end InitE.FrontendStages.Declarations
