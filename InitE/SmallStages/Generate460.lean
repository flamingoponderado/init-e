import Tools.GenSmallStages
import InitE.SmallStages.Oracles460
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 460 InitE.WordStages.source460.2.1 InitE.WordStages.source460.2.2 InitE.SmallStages.Oracles460.oracle460
