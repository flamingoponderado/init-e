import InitE.FrontendStages.Globals.Output103
import InitE.FrontendStages.Declarations.Data103
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate82
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate103_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified103) =
        some globalOutput103 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal103 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified103) := by trivial
theorem globalException103_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified103) = none := by rfl
#print axioms globalTranslate103_eq
end InitE.FrontendStages.Declarations
