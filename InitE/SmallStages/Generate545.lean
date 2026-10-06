import Tools.GenSmallStages
import InitE.SmallStages.Oracles545
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 545 InitE.WordStages.source545.2.1 InitE.WordStages.source545.2.2 InitE.SmallStages.Oracles545.oracle545
