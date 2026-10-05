import Tools.GenSmallStages
import InitE.SmallStages.Oracles223
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 223 InitE.WordStages.source223.2.1 InitE.WordStages.source223.2.2 InitE.SmallStages.Oracles223.oracle223
