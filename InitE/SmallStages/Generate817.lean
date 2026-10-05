import Tools.GenSmallStages
import InitE.SmallStages.Oracles817
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 817 InitE.WordStages.source817.2.1 InitE.WordStages.source817.2.2 InitE.SmallStages.Oracles817.oracle817
