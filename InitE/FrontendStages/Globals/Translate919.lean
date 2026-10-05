import InitE.FrontendStages.Globals.Output919
import InitE.FrontendStages.Declarations.Data919
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate903
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate919_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified919) =
        some globalOutput919 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal919 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified919) := by trivial
theorem globalException919_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified919) = none := by rfl
#print axioms globalTranslate919_eq
end InitE.FrontendStages.Declarations
