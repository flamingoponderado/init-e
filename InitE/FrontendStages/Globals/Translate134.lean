import InitE.FrontendStages.Globals.Output134
import InitE.FrontendStages.Declarations.Data134
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate118
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate134_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) =
        some globalOutput134 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal134 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) := by trivial
theorem globalException134_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) = none := by rfl
#print axioms globalTranslate134_eq
end InitE.FrontendStages.Declarations
