import Tools.GenSmallStages
import InitE.SmallStages.Oracles809
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 809 InitE.WordStages.source809.2.1 InitE.WordStages.source809.2.2 InitE.SmallStages.Oracles809.oracle809
