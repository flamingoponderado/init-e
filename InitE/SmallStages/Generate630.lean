import Tools.GenSmallStages
import InitE.SmallStages.Oracles630
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 630 InitE.WordStages.source630.2.1 InitE.WordStages.source630.2.2 InitE.SmallStages.Oracles630.oracle630
