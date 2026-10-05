import Tools.GenSmallStages
import InitE.SmallStages.Oracles758
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 758 InitE.WordStages.source758.2.1 InitE.WordStages.source758.2.2 InitE.SmallStages.Oracles758.oracle758
