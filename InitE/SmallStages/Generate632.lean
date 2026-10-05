import Tools.GenSmallStages
import InitE.SmallStages.Oracles632
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 632 InitE.WordStages.source632.2.1 InitE.WordStages.source632.2.2 InitE.SmallStages.Oracles632.oracle632
