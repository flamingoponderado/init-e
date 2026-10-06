import InitE.FrontendStages.Globals.Output361
import InitE.FrontendStages.Declarations.Data361
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate338
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate361_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified361) =
        some globalOutput361 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal361 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified361) := by trivial
theorem globalException361_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified361) = none := by rfl
#print axioms globalTranslate361_eq
end InitE.FrontendStages.Declarations
