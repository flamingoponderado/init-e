import InitE.FrontendStages.Globals.Output212
import InitE.FrontendStages.Declarations.Data212
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate196
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate212_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) =
        some globalOutput212 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal212 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) := by trivial
theorem globalException212_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) = none := by rfl
#print axioms globalTranslate212_eq
end InitE.FrontendStages.Declarations
