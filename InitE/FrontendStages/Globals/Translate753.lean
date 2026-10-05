import InitE.FrontendStages.Globals.Output753
import InitE.FrontendStages.Declarations.Data753
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate737
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate753_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) =
        some globalOutput753 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal753 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) := by trivial
theorem globalException753_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) = none := by rfl
#print axioms globalTranslate753_eq
end InitE.FrontendStages.Declarations
