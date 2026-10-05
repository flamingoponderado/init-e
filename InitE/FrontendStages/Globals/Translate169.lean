import InitE.FrontendStages.Globals.Output169
import InitE.FrontendStages.Declarations.Data169
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate153
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate169_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified169) =
        some globalOutput169 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal169 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified169) := by trivial
theorem globalException169_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified169) = none := by rfl
#print axioms globalTranslate169_eq
end InitE.FrontendStages.Declarations
