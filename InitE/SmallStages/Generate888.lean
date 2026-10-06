import Tools.GenSmallStages
import InitE.SmallStages.Oracles888
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 888 InitE.WordStages.source888.2.1 InitE.WordStages.source888.2.2 InitE.SmallStages.Oracles888.oracle888
