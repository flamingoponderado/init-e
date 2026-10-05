import Tools.GenSmallStages
import InitE.SmallStages.Oracles390
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 390 InitE.WordStages.source390.2.1 InitE.WordStages.source390.2.2 InitE.SmallStages.Oracles390.oracle390
